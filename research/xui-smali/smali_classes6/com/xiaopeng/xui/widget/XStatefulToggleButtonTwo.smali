.class public Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;
.super Lcom/xiaopeng/xui/widget/XStatefulView;
.source "XStatefulToggleButtonTwo.java"


# instance fields
.field private imageId:I

.field private textOff:Ljava/lang/String;

.field private textOn:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private x_img:Lcom/xiaopeng/xui/widget/XImageView;

.field private x_title:Lcom/xiaopeng/xui/widget/XTextView;

.field private x_v_close_layout:Landroid/view/View;

.field private x_v_doing_layout:Landroid/view/View;

.field private x_v_error_layout:Landroid/view/View;

.field private x_v_open_layout:Landroid/view/View;

.field private x_v_pause_layout:Landroid/view/View;

.field private x_vb_close_layout:Landroid/view/ViewStub;

.field private x_vb_doing_layout:Landroid/view/ViewStub;

.field private x_vb_error_layout:Landroid/view/ViewStub;

.field private x_vb_open_layout:Landroid/view/ViewStub;

.field private x_vb_pause_layout:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
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
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setClipToOutline(Z)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_stateful_toggle_two:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_src:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    .line 52
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    .line 53
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_textOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOn:Ljava/lang/String;

    .line 54
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_textOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOff:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->initDate()V

    .line 58
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_text:I

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->update(I)V

    return-void
.end method

.method private initDate()V
    .locals 2

    .line 76
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_img:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->update(I)V

    .line 83
    return-void
.end method

.method private initView()V
    .locals 1

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_img:Lcom/xiaopeng/xui/widget/XImageView;

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_close_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_close_layout:Landroid/view/ViewStub;

    .line 69
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_doing_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_doing_layout:Landroid/view/ViewStub;

    .line 70
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_open_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_open_layout:Landroid/view/ViewStub;

    .line 71
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_pause_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_pause_layout:Landroid/view/ViewStub;

    .line 72
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vb_error_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_error_layout:Landroid/view/ViewStub;

    .line 73
    return-void
.end method

.method private update(I)V
    .locals 0
    .param p1, "state"    # I

    .line 114
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateError()V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateOpen()V

    .line 117
    goto :goto_0

    .line 122
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updatePause()V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateDoing()V

    .line 120
    goto :goto_0

    .line 125
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateClose()V

    .line 126
    nop

    .line 131
    :goto_0
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

.method private updateClose()V
    .locals 3

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setSelected(Z)V

    .line 176
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->closeId:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->closeId:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->openId:I

    if-ne v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_close_layout:Landroid/view/ViewStub;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->closeId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_close_layout:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    .line 186
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 187
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    return-void
.end method

.method private updateCustom(I)V
    .locals 5
    .param p1, "state"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "currentLayout":Landroid/view/View;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    .line 224
    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    .line 221
    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    .line 218
    nop

    .line 229
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 231
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 232
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 235
    :cond_1
    if-eqz v0, :cond_2

    .line 236
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
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

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setSelected(Z)V

    .line 154
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->doingId:I

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_doing_layout:Landroid/view/ViewStub;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->doingId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_doing_layout:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 161
    return-void
.end method

.method private updateError()V
    .locals 2

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setSelected(Z)V

    .line 199
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->errorId:I

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_error_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->errorId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_error_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    .line 205
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 206
    return-void
.end method

.method private updateOpen()V
    .locals 2

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setSelected(Z)V

    .line 135
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->openId:I

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_open_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->openId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_open_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    .line 145
    :cond_1
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 146
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_2
    return-void
.end method

.method private updatePause()V
    .locals 2

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setSelected(Z)V

    .line 165
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->pauseId:I

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_pause_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_pause_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    .line 171
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public getCloseButton()Landroid/view/View;
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->getPauseLayout()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCloseLayout()Landroid/view/View;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_close_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->closeId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_close_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    return-object v0
.end method

.method public getDoingLayout()Landroid/view/View;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_doing_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->doingId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_doing_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    return-object v0
.end method

.method public getErrorLayout()Landroid/view/View;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_error_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->errorId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_error_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_error_layout:Landroid/view/View;

    return-object v0
.end method

.method public getOpenButton()Landroid/view/View;
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->getPauseLayout()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayout()Landroid/view/View;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_open_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_open_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    return-object v0
.end method

.method public getPauseLayout()Landroid/view/View;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_pause_layout:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->pauseId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_vb_pause_layout:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    return-object v0
.end method

.method public getTagView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 194
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onAttachedToWindow()V

    .line 100
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->update(I)V

    .line 101
    new-instance v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo$1;-><init>(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->addOnStateChangeListener(Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;)V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 295
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->removeOnStateChangeListener()V

    .line 297
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "imageId"    # I

    .line 86
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_img:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method
