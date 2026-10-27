.class Lcom/xiaopeng/devtools/presenter/aftersales/g$2;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$2;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$2;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$2;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->c(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 105
    return-void
.end method
