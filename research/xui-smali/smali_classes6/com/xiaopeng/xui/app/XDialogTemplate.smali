.class public Lcom/xiaopeng/xui/app/XDialogTemplate;
.super Ljava/lang/Object;
.source "XDialogTemplate.java"


# instance fields
.field mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

.field x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

.field x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

.field x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

.field x_dialog_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

.field x_dialog_message2:Lcom/xiaopeng/xui/widget/XTextView;

.field x_dialog_title:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_dialog_with_three_button:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(I)V

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_message2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message2:Lcom/xiaopeng/xui/widget/XTextView;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_button3:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    .line 32
    return-void
.end method


# virtual methods
.method public dismiss()Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 43
    return-object p0
.end method

.method public getButton1()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method public getButton2()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method public getButton3()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method public getDialog()Lcom/xiaopeng/xui/app/XDialogPure;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public getMessage2(Ljava/lang/String;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message2:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public getMessageView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public getTitleView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_title:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public setButton1(ILandroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object p0
.end method

.method public setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button1:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p0
.end method

.method public setButton2(ILandroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object p0
.end method

.method public setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button2:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object p0
.end method

.method public setButton3(ILandroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-object p0
.end method

.method public setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-object p0
.end method

.method public setButton3Visible(Z)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 2
    .param p1, "visible"    # Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_button3:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 145
    :goto_0
    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "contentId"    # I

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 73
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p0
.end method

.method public setMessage2(I)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "contentId"    # I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 85
    return-object p0
.end method

.method public setMessage2(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_message2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object p0
.end method

.method public setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "type"    # I

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    .line 49
    return-object p0
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "titleId"    # I

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_title:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 61
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->x_dialog_title:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object p0
.end method

.method public show()Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogTemplate;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    .line 37
    return-object p0
.end method
