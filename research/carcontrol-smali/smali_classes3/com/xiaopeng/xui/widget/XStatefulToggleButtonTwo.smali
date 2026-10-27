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

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 48
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->setClipToOutline(Z)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_stateful_toggle_two:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 51
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_src:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    .line 52
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    .line 53
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_textOn:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOn:Ljava/lang/String;

    .line 54
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_textOff:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOff:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->initDate()V

    .line 58
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XStatefulToggleButtonTwo_android_text:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;I)V
    .locals 0

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
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_img:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

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

    return-void
.end method

.method private update(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateError()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateOpen()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updatePause()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateDoing()V

    goto :goto_0

    .line 125
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateClose()V

    :goto_0
    return-void
.end method

.method private updateClose()V
    .locals 3

    const/4 v0, 0x0

    .line 175
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

    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateCustom(I)V
    .locals 3

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

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

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_open_layout:Landroid/view/View;

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_pause_layout:Landroid/view/View;

    goto :goto_0

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_doing_layout:Landroid/view/View;

    goto :goto_0

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_v_close_layout:Landroid/view/View;

    .line 229
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
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

    .line 232
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateDoing()V
    .locals 3

    const/4 v0, 0x1

    .line 153
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

    return-void
.end method

.method private updateError()V
    .locals 2

    const/4 v0, 0x1

    .line 198
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

    :cond_0
    const/4 v0, 0x4

    .line 205
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    return-void
.end method

.method private updateOpen()V
    .locals 2

    const/4 v0, 0x1

    .line 134
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

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 145
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

    .line 146
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->textOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updatePause()V
    .locals 2

    const/4 v0, 0x1

    .line 164
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

    :cond_0
    const/4 v0, 0x2

    .line 171
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->updateCustom(I)V

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

    const/16 v1, 0x8

    .line 244
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

    const/16 v1, 0x8

    .line 253
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

    const/16 v1, 0x8

    .line 280
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

    const/16 v1, 0x8

    .line 271
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

    const/16 v1, 0x8

    .line 262
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

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 295
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->removeOnStateChangeListener()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 86
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->imageId:I

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_img:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonTwo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
