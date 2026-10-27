.class Lcom/xiaopeng/xui/widget/XTextInput$1;
.super Ljava/lang/Object;
.source "XTextInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahN:Lcom/xiaopeng/xui/widget/XTextInput;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTextInput;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    invoke-static {}, Lcom/xiaopeng/xui/b/f;->qL()Lcom/xiaopeng/xui/b/f;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/b/f;->play(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTextInput;->a(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTextInput;->b(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTextInput;->a(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->b(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->ahN:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/vui/commons/c;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 115
    :cond_0
    return-void
.end method
