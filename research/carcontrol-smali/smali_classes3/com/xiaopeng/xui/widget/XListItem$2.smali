.class Lcom/xiaopeng/xui/widget/XListItem$2;
.super Ljava/lang/Object;
.source "XListItem.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XListItem;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XListItem;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 128
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XListItem;->access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XListItem;->access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XListItem;->access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XListItem;->access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$2;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XListItem;->access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
