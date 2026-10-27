.class public Lcom/xiaopeng/xui/widget/XTextFields;
.super Lcom/xiaopeng/xui/widget/XTextInput;
.source "XTextFields.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


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
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XTextFields:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTextFields_text_fields_password_enabled:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 51
    .local v1, "passwordEnable":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTextFields;->setPasswordEnable(Z)V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    .line 54
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
    .param p0, "view"    # Landroid/view/View;

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

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_text_fields:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_reset:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mResetView:Landroid/widget/ImageButton;

    .line 60
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_pass:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    .line 61
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_edit:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    .line 62
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_error:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mErrorTextView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mStatusView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XInputUtils;->ignoreHiddenInput(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public isPasswordEnable()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordEnable:Z

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    instance-of v0, v0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v3, Lcom/xiaopeng/xpui/R$string;->vui_label_hide_password:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/xpui/R$string;->vui_label_display_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 127
    .local v0, "passwordLabels":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    xor-int/2addr v1, v2

    .line 128
    .local v1, "curIndex":I
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;)V

    .line 130
    .end local v0    # "passwordLabels":[Ljava/lang/String;
    .end local v1    # "curIndex":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 118
    .local v0, "id":I
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_text_fields_pass:I

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->passwordCheckToggleRequested()V

    .line 121
    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 135
    const-string v0, "textfields onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->logD(Ljava/lang/String;)V

    .line 136
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
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "value":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v3, Lcom/xiaopeng/xpui/R$string;->vui_label_hide_password:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    sget v3, Lcom/xiaopeng/xpui/R$string;->vui_label_display_password:I

    .line 140
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    :cond_2
    return v2

    .line 143
    :cond_3
    new-instance v1, Lcom/xiaopeng/xui/widget/XTextFields$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/widget/XTextFields$1;-><init>(Lcom/xiaopeng/xui/widget/XTextFields;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTextFields;->post(Ljava/lang/Runnable;)Z

    .line 151
    return v2

    .line 154
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextFields$ZQ-mDqZK3VUmPHHAmlRctH325y0;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextFields$ZQ-mDqZK3VUmPHHAmlRctH325y0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTextFields;->post(Ljava/lang/Runnable;)Z

    .line 158
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
    .local v0, "selection":I
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 100
    const/4 v1, 0x1

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

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;->onCheckStateChanged()V

    .line 108
    .end local v0    # "selection":I
    :cond_1
    return-void
.end method

.method public setCheckStateChangeListener(Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;)V
    .locals 0
    .param p1, "checkStateChangeListener"    # Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->checkStateChangeListener:Lcom/xiaopeng/xui/widget/XTextFields$CheckStateChangeListener;

    .line 168
    return-void
.end method

.method public setPasswordEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

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
    .local v0, "selection":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 78
    if-eqz p1, :cond_1

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutDirection(I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 84
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutDirection(I)V

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPassWordView:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mPasswordCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 90
    .end local v0    # "selection":I
    :cond_2
    return-void
.end method
