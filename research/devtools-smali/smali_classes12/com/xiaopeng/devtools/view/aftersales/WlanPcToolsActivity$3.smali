.class Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;
.super Ljava/lang/Object;
.source "WlanPcToolsActivity.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->lT()V
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

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/app/e;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->e(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->stopService(Landroid/content/Intent;)Z

    .line 170
    return-void
.end method
