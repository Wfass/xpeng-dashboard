.class public Lcom/xiaopeng/devtools/view/ActionBar;
.super Landroid/widget/LinearLayout;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/ActionBar$b;,
        Lcom/xiaopeng/devtools/view/ActionBar$a;,
        Lcom/xiaopeng/devtools/view/ActionBar$c;
    }
.end annotation


# instance fields
.field private Cd:I

.field private Ce:I

.field private Cf:Ljava/lang/String;

.field private Cg:I

.field private Ch:Landroid/widget/TextView;

.field private Ci:Landroid/widget/ImageButton;

.field private Cj:Landroid/widget/ImageButton;

.field private Ck:Landroid/view/View;

.field private Cl:I

.field private Cm:Landroid/widget/TextView;

.field private Cn:Ljava/lang/String;

.field private Co:Lcom/xiaopeng/devtools/view/ActionBar$c;

.field private Cp:Lcom/xiaopeng/devtools/view/ActionBar$a;

.field private Cq:Lcom/xiaopeng/devtools/view/ActionBar$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/ActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/view/ActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object p3, Lcom/xiaopeng/devtools/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    const/4 p2, -0x1

    const/16 p3, 0x15

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cd:I

    .line 51
    const/16 p3, 0x1c

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ce:I

    .line 52
    const/16 p3, 0x1b

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cg:I

    .line 53
    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cl:I

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBar;->init()V

    .line 57
    return-void
.end method

.method private init()V
    .locals 5

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    .line 64
    const v1, 0x7f090458

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ck:Landroid/view/View;

    .line 65
    const v1, 0x7f0903b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ci:Landroid/widget/ImageButton;

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ci:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ce:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    iget v4, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ce:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_0
    iget v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cd:I

    if-eq v1, v3, :cond_1

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ci:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cd:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ci:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 82
    :cond_1
    iget v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cg:I

    if-eq v1, v3, :cond_2

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cg:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    :cond_2
    iget v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cl:I

    if-eq v1, v3, :cond_3

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    iget v3, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cl:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ActionBar;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    const v1, 0x7f0903ba

    if-eq v0, v1, :cond_2

    const v1, 0x7f0901f2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const v1, 0x7f0901f3

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cp:Lcom/xiaopeng/devtools/view/ActionBar$a;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cp:Lcom/xiaopeng/devtools/view/ActionBar$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/ActionBar$a;->onBack(Landroid/view/View;)V

    goto :goto_1

    .line 107
    :cond_1
    const v1, 0x7f0903b7

    if-ne v0, v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cq:Lcom/xiaopeng/devtools/view/ActionBar$b;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cq:Lcom/xiaopeng/devtools/view/ActionBar$b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/ActionBar$b;->onCenterClick(Landroid/view/View;)V

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Co:Lcom/xiaopeng/devtools/view/ActionBar$c;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Co:Lcom/xiaopeng/devtools/view/ActionBar$c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/ActionBar$c;->e(Landroid/view/View;)V

    .line 112
    :cond_3
    :goto_1
    return-void
.end method

.method public setBottomLineVisible(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ck:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cn:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cm:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setOnBackListener(Lcom/xiaopeng/devtools/view/ActionBar$a;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cp:Lcom/xiaopeng/devtools/view/ActionBar$a;

    .line 152
    return-void
.end method

.method public setOnCenterClickListener(Lcom/xiaopeng/devtools/view/ActionBar$b;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cq:Lcom/xiaopeng/devtools/view/ActionBar$b;

    .line 156
    return-void
.end method

.method public setOnRightClickListener(Lcom/xiaopeng/devtools/view/ActionBar$c;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Co:Lcom/xiaopeng/devtools/view/ActionBar$c;

    .line 140
    return-void
.end method

.method public setRightBtnResId(I)V
    .locals 1

    .line 121
    iput p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cg:I

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    iget v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public setRightBtnVisible(Z)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cj:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 144
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cf:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Cf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public setRightTextResId(I)V
    .locals 1

    .line 115
    iput p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ce:I

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    iget v0, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ce:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/ActionBar;->Ch:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    return-void
.end method
