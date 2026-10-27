.class Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;
.super Ljava/lang/Object;
.source "SearchHistoryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b()V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->aa(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->confirm_clear_hisotry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->dialog_ok:I

    new-instance v2, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;)V

    .line 123
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->dialog_cancle:I

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method
