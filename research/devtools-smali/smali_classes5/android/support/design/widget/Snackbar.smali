.class public final Landroid/support/design/widget/Snackbar;
.super Landroid/support/design/widget/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V

    .line 115
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .line 197
    nop

    .line 199
    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 201
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 202
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 206
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 209
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 213
    :cond_3
    if-eqz p0, :cond_5

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 216
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 218
    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    .line 221
    return-object v1
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 158
    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 159
    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 165
    sget v1, Landroid/support/design/widget/R$layout;->design_layout_snackbar_include:I

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 168
    new-instance v1, Landroid/support/design/widget/Snackbar;

    invoke-direct {v1, p0, v0, v0}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V

    .line 169
    invoke-virtual {v1, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 170
    invoke-virtual {v1, p2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 171
    return-object v1

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->dismiss()V

    .line 129
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 267
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    new-instance p1, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {p1, p0, p2}, Landroid/support/design/widget/Snackbar$1;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 270
    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 307
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 295
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    return-object p0
.end method

.method public setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 331
    :cond_0
    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 336
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    .line 337
    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 244
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 232
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-object p0
.end method

.method public show()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->show()V

    .line 122
    return-void
.end method
