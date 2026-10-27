.class Lcom/google/android/material/textfield/i$1;
.super Lcom/google/android/material/internal/n;
.source "PasswordToggleEndIconDelegate.java"


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

    .line 37
    iput-object p1, p0, Lcom/google/android/material/textfield/i$1;->a:Lcom/google/android/material/textfield/i;

    invoke-direct {p0}, Lcom/google/android/material/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/google/android/material/textfield/i$1;->a:Lcom/google/android/material/textfield/i;

    iget-object p1, p1, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p2, p0, Lcom/google/android/material/textfield/i$1;->a:Lcom/google/android/material/textfield/i;

    invoke-static {p2}, Lcom/google/android/material/textfield/i;->a(Lcom/google/android/material/textfield/i;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
