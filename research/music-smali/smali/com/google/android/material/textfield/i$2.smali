.class Lcom/google/android/material/textfield/i$2;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/textfield/i$2;->a:Lcom/google/android/material/textfield/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 52
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 53
    iget-object p1, p0, Lcom/google/android/material/textfield/i$2;->a:Lcom/google/android/material/textfield/i;

    iget-object p1, p1, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v2, p0, Lcom/google/android/material/textfield/i$2;->a:Lcom/google/android/material/textfield/i;

    invoke-static {v2}, Lcom/google/android/material/textfield/i;->a(Lcom/google/android/material/textfield/i;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 55
    iget-object p1, p0, Lcom/google/android/material/textfield/i$2;->a:Lcom/google/android/material/textfield/i;

    invoke-static {p1}, Lcom/google/android/material/textfield/i;->b(Lcom/google/android/material/textfield/i;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object p1, p0, Lcom/google/android/material/textfield/i$2;->a:Lcom/google/android/material/textfield/i;

    invoke-static {p1}, Lcom/google/android/material/textfield/i;->b(Lcom/google/android/material/textfield/i;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
