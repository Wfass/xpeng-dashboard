.class public Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;
.source "SearchTopBar.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/widget/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/search/widget/view/b;",
        "Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/widget/view/b;"
    }
.end annotation


# instance fields
.field private c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

.field private d:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XTextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/xiaopeng/xui/widget/XImageButton;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->d:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/search/a$g;->SearchTopBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/search/a$g;->SearchTopBar_stb_inflate_with_type:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->l()V

    return-void
.end method

.method private getAccountType()I
    .locals 3

    .line 221
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v0

    invoke-virtual {v0}, Lbbz;->b()I

    move-result v0

    .line 225
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->e()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 227
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->c()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    return v0

    .line 229
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    return v1
.end method

.method private l()V
    .locals 2

    .line 250
    new-instance v0, Lbnw$f;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbnw$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSearch: post search: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tangrh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->h()Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;)V
    .locals 5

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getAccountType()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getContentViewId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ae;->a(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 211
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;->a(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->addView(Landroid/view/View;)V

    .line 215
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchTopBar Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchTopBar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    new-instance p2, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$5;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$5;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 100
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->dialog_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->h:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->countdown_seconds:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->countdown_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->g:Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->countdown_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->f:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected c()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->setVuiScene(Lbxu;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->k()V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->h:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$4;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v1

    invoke-virtual {v1}, Lbnz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 237
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_topbar:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchLeftBarPresenter;-><init>()V

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bk;->a(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "SearchTopBar"

    const-string v1, "hideSoftInput: "

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 288
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->search_top_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method public setCallback(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->d:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    return-void
.end method

.method public setFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setSearchBarEnable(Z)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c:Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
