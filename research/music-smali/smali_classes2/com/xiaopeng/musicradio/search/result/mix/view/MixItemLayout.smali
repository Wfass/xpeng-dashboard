.class public Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "MixItemLayout.java"


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XTextView;

.field private b:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private c:Lcom/nex3z/flowlayout/FlowLayout;

.field private d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->e:I

    const/16 p1, 0x96

    .line 42
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->g:I

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->e:I

    const/16 p1, 0x96

    .line 42
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->g:I

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->e:I

    const/16 p1, 0x96

    .line 42
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->g:I

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;)Lcom/nex3z/flowlayout/FlowLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->item_mix_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->back_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->b:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->container_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nex3z/flowlayout/FlowLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    return-void
.end method

.method private synthetic a(Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 119
    sget p3, Lcom/xiaopeng/musicradio/search/a$d;->title:I

    invoke-static {p3}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lbop;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Ep9jZWCxLBxF5JFJpEWe3is4_Ho(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/nex3z/flowlayout/FlowLayout;->setMaxRows(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/nex3z/flowlayout/FlowLayout;->setRowSpacing(F)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {p1, p2}, Lcom/nex3z/flowlayout/FlowLayout;->setChildSpacing(I)V

    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiMode(Lbya;)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "defaultExecElementId"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->b:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/mix/view/-$$Lambda$MixItemLayout$Ep9jZWCxLBxF5JFJpEWe3is4_Ho;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/view/-$$Lambda$MixItemLayout$Ep9jZWCxLBxF5JFJpEWe3is4_Ho;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->g:I

    if-ge p3, v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->removeAllViews()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 79
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p3, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v2, v0, v1}, Lcom/nex3z/flowlayout/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    return-object v0
.end method

.method public getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public setColumn(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->f:I

    return-void
.end method

.method public setPlayAllListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiMode(Lbya;)V

    .line 135
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "defaultExecElementId"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
