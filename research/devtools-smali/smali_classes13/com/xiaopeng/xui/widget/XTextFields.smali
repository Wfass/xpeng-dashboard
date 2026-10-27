.class public Lcom/xiaopeng/xui/widget/XTextFields;
.super Lcom/xiaopeng/xui/widget/XTextInput;
.source "XTextFields.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTextFields$a;
    }
.end annotation


# instance fields
.field private ahA:Z

.field private ahB:Lcom/xiaopeng/xui/widget/XTextFields$a;

.field private ahy:Landroid/widget/ImageButton;

.field private ahz:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XTextFields:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTextFields_text_fields_password_enabled:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 51
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XTextFields;->setPasswordEnable(Z)V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 109
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


# virtual methods
.method protected nL()V
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

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahC:Landroid/widget/ImageButton;

    .line 60
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_pass:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

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

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahD:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahE:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/e;->j(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 116
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_fields_pass:I

    if-ne p1, v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->rE()V

    .line 119
    :cond_0
    return-void
.end method

.method public rE()V
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahz:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextFields;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/xui/a;->ql()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahB:Lcom/xiaopeng/xui/widget/XTextFields$a;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahB:Lcom/xiaopeng/xui/widget/XTextFields$a;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/XTextFields$a;->rF()V

    .line 106
    :cond_1
    return-void
.end method

.method public setCheckStateChangeListener(Lcom/xiaopeng/xui/widget/XTextFields$a;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahB:Lcom/xiaopeng/xui/widget/XTextFields$a;

    .line 166
    return-void
.end method

.method public setPasswordEnable(Z)V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahz:Z

    if-eq v0, p1, :cond_2

    .line 75
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahz:Z

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

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
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 83
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    .line 85
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahy:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->ahA:Z

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    :cond_2
    return-void
.end method
