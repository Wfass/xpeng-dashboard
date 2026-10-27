.class Lcom/xiaopeng/xui/widget/XListSingle$1;
.super Ljava/lang/Object;
.source "XListSingle.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XListSingle;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XListSingle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XListSingle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XListSingle;

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 162
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListSingle;->access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListSingle;->access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListSingle;->access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListSingle;->access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XListSingle;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListSingle;->access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 158
    return-void
.end method
