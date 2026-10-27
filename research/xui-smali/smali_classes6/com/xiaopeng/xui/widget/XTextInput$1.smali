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
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTextInput;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTextInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XTextInput;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->playDeleteSound()V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->access$000(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->access$100(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->access$000(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTextInput;->access$100(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextInput$1;->this$0:Lcom/xiaopeng/xui/widget/XTextInput;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method
