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
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_stateful_toggle_single:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButton_stateful_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    .line 51
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButton_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    .line 52
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButton_android_textOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOn:Ljava/lang/String;

    .line 53
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButton_android_textOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOff:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->initDate()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
    .param p1, "x1"    # I

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

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

    .line 77
    return-void
.end method

.method private initView()V
    .locals 1

    .line 60
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 61
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 62
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 63
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_close_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_close_layout:Landroid/view/ViewStub;

    .line 64
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_doing_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_doing_layout:Landroid/view/ViewStub;

    .line 65
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_open_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_open_layout:Landroid/view/ViewStub;

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_pause_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_vb_pause_layout:Landroid/view/ViewStub;

    .line 67
    return-void
.end method

.method private update(I)V
    .locals 0
    .param p1, "state"    # I

    .line 109
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateOpen()V

    .line 112
    goto :goto_0

    .line 117
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updatePause()V

    .line 118
    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateDoing()V

    .line 115
    goto :goto_0

    .line 120
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateClose()V

    .line 123
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateClose()V
    .locals 3

    .line 174
    const/4 v0, 0x0

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
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

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
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_3
    return-void
.end method

.method private updateCustom(I)V
    .locals 5
    .param p1, "state"    # I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "currentLayout":Landroid/view/View;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_pause_layout:Landroid/view/View;

    .line 215
    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_doing_layout:Landroid/view/View;

    .line 212
    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

    .line 209
    nop

    .line 220
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 222
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 223
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 226
    :cond_1
    if-eqz v0, :cond_2

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDoing()V
    .locals 3

    .line 152
    const/4 v0, 0x1

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

    .line 160
    return-void
.end method

.method private updateOpen()V
    .locals 2

    .line 126
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_v_close_layout:Landroid/view/View;

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

    .line 144
    :cond_2
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    .line 145
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->textOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3
    return-void
.end method

.method private updatePause()V
    .locals 2

    .line 163
    const/4 v0, 0x1

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

    .line 170
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->updateCustom(I)V

    .line 171
    return-void
.end method


# virtual methods
.method public getCloseButton()Landroid/view/View;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getPauseLayout()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_close:I

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

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_open:I

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

    .line 106
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->removeOnStateChangeListener()V

    .line 279
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1, "iconId"    # I

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->iconId:I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_icon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    return-void
.end method
