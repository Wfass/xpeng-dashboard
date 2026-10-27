.class Lcom/xiaopeng/devtools/presenter/aftersales/b$1;
.super Ljava/lang/Object;
.source "CommonCmdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/aftersales/ShellCmdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/b;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellResponse(ILjava/lang/String;Z)V
    .locals 4

    .line 39
    const-string v0, "CommonCmdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorcode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCloudCmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p3}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Lcom/xiaopeng/devtools/view/aftersales/b;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 41
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->b(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->b(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "success"

    invoke-static {p1, p3}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    const-string p3, ""

    invoke-static {p1, p3}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/g;->cA(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Lcom/xiaopeng/devtools/view/aftersales/b;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/g;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/b;->cU(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Lcom/xiaopeng/devtools/view/aftersales/b;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f100151

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/b;->cU(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->b(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->b(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fail"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/b$1;->vq:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->a(Lcom/xiaopeng/devtools/presenter/aftersales/b;)Lcom/xiaopeng/devtools/view/aftersales/b;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f100139

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/b;->cU(Ljava/lang/String;)V

    .line 59
    :cond_4
    :goto_0
    return-void
.end method
