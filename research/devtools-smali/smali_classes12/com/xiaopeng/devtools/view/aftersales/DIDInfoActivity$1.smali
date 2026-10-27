.class Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;
.super Ljava/lang/Object;
.source "DIDInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->c(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DX:Ljava/util/ArrayList;

.field final synthetic DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DX:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;->DX:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/devtools/utils/u;->a(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 59
    return-void
.end method
