.class public Lcom/xiaopeng/xui/widget/XTextFields;
.super Lcom/xiaopeng/xui/widget/XTextInput;
.source "XTextFields.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;
    }
.end annotation


# instance fields
.field private checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private mPassWordView:Landroid/widget/ImageButton;

.field private mPasswordCheck:Z

.field private mPasswordEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    sget-object p3, Lbyg$n;->XTextFields:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget p3, Lbyg$n;->XTextFields_text_fields_password_enabled:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 51
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XTextFields;->setPasswordEnable(Z)V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onVuiElementEvent$0(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbyg$j;->x_text_fields:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v0, Lbyg$h;->x_text_fields_reset:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mResetView:Landroid/widget/ImageButton;

    .line 60
    sget v0, Lbyg$h;->x_text_fields_pass:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    .line 61
    sget v0, Lbyg$h;->x_text_fields_edit:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    .line 62
    sget v0, Lbyg$h;->x_text_fields_error:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mErrorTextView:Landroid/widget/TextView;

    .line 63
    sget v0, Lbyg$h;->x_text_fields_line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mStatusView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XInputUtils;->ignoreHiddenInput(Landroid/view/View;)V

    return-void
.end method

.method public isPasswordEnable()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordEnable:Z

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    instance-of p1, p1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 126
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v1, Lbyg$l;->vui_label_hide_password:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v0, Lbyg$l;->vui_label_display_password:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 127
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    xor-int/2addr p2, v0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 118
    sget v0, Lbyg$h;->x_text_fields_pass:I

    if-ne p1, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->passwordCheckToggleRequested()V

    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 3

    const-string v0, "textfields onVuiElementEvent"

    .line 135
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 138
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 139
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v2, Lbyg$l;->vui_label_hide_password:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v2, Lbyg$l;->vui_label_display_password:I

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    return v1

    .line 143
    :cond_3
    new-instance p2, Lcom/xiaopeng/xui/widget/XTextFields$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/widget/XTextFields$1;-><init>(Lcom/xiaopeng/xui/widget/XTextFields;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextFields;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 155
    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextFields$ZQ-mDqZK3VUmPHHAmlRctH325y0;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextFields$ZQ-mDqZK3VUmPHHAmlRctH325y0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextFields;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return v0
.end method

.method public passwordCheckToggleRequested()V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordEnable:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;->onCheckStateChanged()V

    :cond_1
    return-void
.end method

.method public setCheckStateChangeListener(Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    return-void
.end method

.method public setPasswordEnable(Z)V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordEnable:Z

    if-eq v0, p1, :cond_2

    .line 75
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordEnable:Z

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutDirection(I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 84
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setLayoutDirection(I)V

    .line 87
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
