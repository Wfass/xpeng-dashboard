.class public Laqc;
.super Landroid/widget/LinearLayout;
.source "LoginFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/xiaopeng/xui/widget/XLoading;

.field private e:Landroid/widget/ImageView;

.field private f:Laqe;


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showAccountSameDialog"

    .line 56
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh_for_overtime:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginDialog"

    .line 76
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object p1, p0, Laqc;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Laqc;->c:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showRequestQrDialog"

    .line 66
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Laqc;->f:Laqe;

    invoke-virtual {v0}, Laqe;->b()V

    .line 68
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoggingDialog"

    .line 86
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginFailDialog"

    .line 95
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 105
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Laqc;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh_for_overtime:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Laqc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Laqc;->d:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Laqc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqc;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Laqc;->b()V

    :cond_0
    return-void
.end method

.method public setQrCodePresenter(Laqe;)V
    .locals 0

    .line 43
    iput-object p1, p0, Laqc;->f:Laqe;

    return-void
.end method
