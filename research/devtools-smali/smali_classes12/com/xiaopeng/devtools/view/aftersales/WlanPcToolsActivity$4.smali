.class Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;
.super Ljava/lang/Object;
.source "WlanPcToolsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 182
    const-string v0, "wlan0"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->ct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f100241

    if-eqz v0, :cond_0

    .line 184
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {v4}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v5, v3, v2}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "UNKNOWN"

    aput-object v5, v2, v1

    invoke-virtual {v4, v3, v2}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    return-void
.end method
