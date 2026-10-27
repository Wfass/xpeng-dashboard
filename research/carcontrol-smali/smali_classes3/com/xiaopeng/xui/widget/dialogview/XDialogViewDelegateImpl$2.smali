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

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z

    move-result v1

    .line 129
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    if-ne p1, v2, :cond_1

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  positiveIntercept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mPositiveListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 132
    invoke-static {v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {p1, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V

    if-eqz v0, :cond_5

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v0, "onClick mPositiveListener is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    if-ne p1, v0, :cond_3

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick negativeIntercept "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , mNegativeListener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 143
    invoke-static {v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    const/4 v2, -0x2

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V

    if-eqz v1, :cond_5

    return-void

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v0, "onClick mNegativeListener is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    if-ne p1, v0, :cond_4

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v0, "onClick close"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$700(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$700(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;->onClose(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v0, "onClick close intercept dismiss "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick invalid id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 162
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$800(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    return-void
.end method
