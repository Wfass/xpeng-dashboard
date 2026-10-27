.class public Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;
.source "BasicInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 3

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fd()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->theme:I

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->DD:Ljava/util/HashMap;

    .line 26
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->DD:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f10044e

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f10004a

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public fe()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fe()V

    .line 33
    return-void
.end method

.method public ff()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->ff()V

    .line 44
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->lJ()V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->DD:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->a(Ljava/util/HashMap;)V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    const-class v0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;

    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->theme:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->a(Ljava/lang/Class;I)V

    .line 66
    goto :goto_0

    .line 61
    :pswitch_1
    const-class v0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;

    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->theme:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/BasicInfoActivity;->a(Ljava/lang/Class;I)V

    .line 62
    nop

    .line 72
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onClick(Landroid/view/View;)V

    .line 73
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onResume()V

    .line 49
    return-void
.end method
