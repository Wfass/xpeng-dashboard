.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 127
    .local v0, "id":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z

    move-result v1

    .line 128
    .local v1, "positiveInterceptDismiss":Z
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z

    move-result v2

    .line 129
    .local v2, "negativeInterceptDismiss":Z
    sget v3, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    if-ne v0, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick  positiveIntercept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mPositiveListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 132
    invoke-static {v5}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V

    .line 134
    if-eqz v1, :cond_5

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v4, "onClick mPositiveListener is null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    sget v3, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    if-ne v0, v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick negativeIntercept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mNegativeListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 143
    invoke-static {v5}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    const/4 v5, -0x2

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V

    .line 145
    if-eqz v2, :cond_5

    .line 146
    return-void

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v4, "onClick mNegativeListener is null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    sget v3, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    if-ne v0, v3, :cond_4

    .line 152
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v4, "onClick close"

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$700(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$700(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;->onClose(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v4, "onClick close intercept dismiss "

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 156
    return-void

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick invalid id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 162
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$800(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    .line 163
    return-void
.end method
