.class public Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
.super Lcom/xiaopeng/xui/widget/XStatefulView;
.source "XStatefulToggleButtonSingle.java"


# instance fields
.field private iconId:I

.field private textOff:Ljava/lang/String;

.field private textOn:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private x_icon:Lcom/xiaopeng/xui/widget/XImageView;

.field private x_loading:Lcom/xiaopeng/xui/widget/XLoading;

.field private x_title:Lcom/xiaopeng/xui/widget/XTextView;

.field private x_v_close_layout:Landroid/view/View;

.field private x_v_doing_layout:Landroid/view/View;

.field private x_v_open_layout:Landroid/view/View;

.field private x_v_pause_layout:Landroid/view/View;

.field private x_vb_close_layout:Landroid/view/ViewStub;

.field private x_vb_doing_layout:Landroid/view/ViewStub;

.field private x_vb_open_layout:Landroid/view/ViewStub;

.field private x_vb_pause_layout:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lbyg$j;->x_stateful_toggle_single:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget-object p3, Lbyg$n;->XStatefulToggleButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lbyg$n;->XStatefulToggleButton_stateful_icon:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    .line 51
    sget p2, Lbyg$n;->XStatefulToggleButton_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    .line 52
    sget p2, Lbyg$n;->XStatefulToggleButton_android_textOn:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOn:Ljava/lang/String;

    .line 53
    sget p2, Lbyg$n;->XStatefulToggleButton_android_textOff:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOff:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->initDate()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->update(I)V

    return-void
.end method

.method private initDate()V
    .locals 2

    .line 70
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->update(I)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 60
    sget v0, Lbyg$h;->x_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 61
    sget v0, Lbyg$h;->x_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 62
    sget v0, Lbyg$h;->x_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 63
    sget v0, Lbyg$h;->x_vb_close_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    .line 64
    sget v0, Lbyg$h;->x_vb_doing_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    .line 65
    sget v0, Lbyg$h;->x_vb_open_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    .line 66
    sget v0, Lbyg$h;->x_vb_pause_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    return-void
.end method

.method private update(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateOpen()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updatePause()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateDoing()V

    goto :goto_0

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateClose()V

    :goto_0
    return-void
.end method

.method private updateClose()V
    .locals 3

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setSelected(Z)V

    .line 175
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    if-eqz v1, :cond_2

    .line 176
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->openId:I

    if-ne v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 179
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    .line 192
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    .line 193
    sget v0, Lbyg$h;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateCustom(I)V
    .locals 3

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    goto :goto_0

    .line 208
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    .line 220
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateDoing()V
    .locals 3

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setSelected(Z)V

    .line 153
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->doingId:I

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->doingId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    return-void
.end method

.method private updateOpen()V
    .locals 2

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setSelected(Z)V

    .line 127
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->openId:I

    if-eqz v0, :cond_2

    .line 128
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->openId:I

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->openId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->openId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    :cond_2
    :goto_0
    const/4 v0, 0x3

    .line 144
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    .line 145
    sget v0, Lbyg$h;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updatePause()V
    .locals 2

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setSelected(Z)V

    .line 164
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->pauseId:I

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    :cond_0
    const/4 v0, 0x2

    .line 170
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    return-void
.end method


# virtual methods
.method public getCloseButton()Landroid/view/View;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getPauseLayout()Landroid/view/View;

    move-result-object v0

    sget v1, Lbyg$h;->x_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCloseLayout()Landroid/view/View;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->closeId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    return-object v0
.end method

.method public getDoingLayout()Landroid/view/View;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->doingId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    return-object v0
.end method

.method public getOpenButton()Landroid/view/View;
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getPauseLayout()Landroid/view/View;

    move-result-object v0

    sget v1, Lbyg$h;->x_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayout()Landroid/view/View;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    return-object v0
.end method

.method public getPauseLayout()Landroid/view/View;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onAttachedToWindow()V

    .line 94
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->update(I)V

    .line 95
    new-instance v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle$1;-><init>(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->addOnStateChangeListener(Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->removeOnStateChangeListener()V

    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
