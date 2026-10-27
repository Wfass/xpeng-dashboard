.class public Lcom/google/android/material/textfield/TextInputLayout$a;
.super Lfh;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 4243
    invoke-direct {p0}, Lfh;-><init>()V

    .line 4244
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4250
    invoke-super/range {p0 .. p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 4251
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4252
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4253
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4254
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4255
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 4256
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v7

    .line 4257
    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 4258
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 4259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v10

    .line 4260
    iget-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v12

    xor-int/2addr v12, v10

    .line 4261
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v10

    const/4 v14, 0x0

    if-nez v13, :cond_2

    .line 4262
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    move v15, v14

    goto :goto_2

    :cond_2
    :goto_1
    move v15, v10

    :goto_2
    if-eqz v11, :cond_3

    .line 4264
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    const-string v11, ", "

    if-eqz v9, :cond_4

    .line 4267
    invoke-virtual {v1, v3}, Lgu;->c(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4268
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 4269
    invoke-virtual {v1, v4}, Lgu;->c(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_6

    if-eqz v6, :cond_6

    .line 4271
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgu;->c(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    .line 4274
    invoke-virtual {v1, v6}, Lgu;->c(Ljava/lang/CharSequence;)V

    .line 4277
    :cond_6
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 4278
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v6, v12, :cond_7

    .line 4279
    invoke-virtual {v1, v4}, Lgu;->g(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 4283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4284
    :cond_8
    invoke-virtual {v1, v4}, Lgu;->c(Ljava/lang/CharSequence;)V

    :goto_5
    if-nez v9, :cond_9

    move v14, v10

    .line 4286
    :cond_9
    invoke-virtual {v1, v14}, Lgu;->l(Z)V

    :cond_a
    if-eqz v3, :cond_b

    .line 4291
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v7, :cond_b

    goto :goto_6

    :cond_b
    const/4 v7, -0x1

    .line 4290
    :goto_6
    invoke-virtual {v1, v7}, Lgu;->b(I)V

    if-eqz v15, :cond_d

    if-eqz v13, :cond_c

    goto :goto_7

    :cond_c
    move-object v5, v8

    .line 4294
    :goto_7
    invoke-virtual {v1, v5}, Lgu;->h(Ljava/lang/CharSequence;)V

    .line 4297
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_e

    if-eqz v2, :cond_e

    .line 4298
    sget v1, Laiv$f;->textinput_helper_text:I

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLabelFor(I)V

    :cond_e
    return-void
.end method
