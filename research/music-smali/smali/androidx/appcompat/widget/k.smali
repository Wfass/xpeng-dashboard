.class public Landroidx/appcompat/widget/k;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Lgd;
.implements Lgh;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/e;

.field private final mDefaultOnReceiveContentListener:Landroidx/core/widget/j;

.field private final mTextClassifierHelper:Landroidx/appcompat/widget/x;

.field private final mTextHelper:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    sget v0, Le$a;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-static {p1}, Landroidx/appcompat/widget/aq;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ao;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 97
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    .line 98
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 100
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    .line 101
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->a(Landroid/util/AttributeSet;I)V

    .line 102
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->b()V

    .line 104
    new-instance p1, Landroidx/appcompat/widget/x;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mTextClassifierHelper:Landroidx/appcompat/widget/x;

    .line 106
    new-instance p1, Landroidx/core/widget/j;

    invoke-direct {p1}, Landroidx/core/widget/j;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mDefaultOnReceiveContentListener:Landroidx/core/widget/j;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 198
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    .line 201
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 116
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->mTextClassifierHelper:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 271
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 223
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 224
    iget-object v1, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {v1, p0, v0, p1}, Landroidx/appcompat/widget/y;->a(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 225
    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/l;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 227
    invoke-static {p0}, Lgj;->u(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p1, v1}, Lha;->a(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Landroidx/appcompat/widget/u;->b(Landroid/view/View;)Lhb$a;

    move-result-object v1

    .line 231
    invoke-static {v0, p1, v1}, Lhb;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Lhb$a;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    .line 278
    invoke-static {p0, p1}, Landroidx/appcompat/widget/u;->a(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public onReceiveContent(Lfj;)Lfj;
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mDefaultOnReceiveContentListener:Landroidx/core/widget/j;

    invoke-virtual {v0, p0, p1}, Landroidx/core/widget/j;->a(Landroid/view/View;Lfj;)Lfj;

    move-result-object p1

    return-object p1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    .line 292
    invoke-static {p0, p1}, Landroidx/appcompat/widget/u;->a(Landroid/widget/TextView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 243
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 242
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->mTextClassifierHelper:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/x;->a(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    .line 253
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
