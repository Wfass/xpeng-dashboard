.class Lcom/xiaopeng/devtools/presenter/aftersales/e$1;
.super Ljava/lang/Object;
.source "EncryptShPresenter.java"

# interfaces
.implements Lcom/xiaopeng/aftersales/EncryptShListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/e;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptShResponse(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 53
    if-eqz p4, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    const/4 p4, 0x0

    .line 57
    const-string v0, "EncryptShPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptShResponse errorcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", outputPath:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-nez p1, :cond_1

    invoke-static {p3}, Lcom/xiaopeng/devtools/utils/g;->cA(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/xiaopeng/devtools/utils/g;->aU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".xp"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 60
    const-string p2, "@)!%Xp0109Motors"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->a(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/xiaopeng/lib/utils/b/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    :cond_1
    invoke-static {p3}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p3}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->a(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p3}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->b(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->c(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Lcom/xiaopeng/devtools/view/aftersales/c;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->c(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Lcom/xiaopeng/devtools/view/aftersales/c;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 67
    if-eqz p4, :cond_2

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10013e

    new-array v2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f10013d

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f10013c

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 66
    :goto_0
    invoke-interface {p2, p4}, Lcom/xiaopeng/devtools/view/aftersales/c;->cU(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->c(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Lcom/xiaopeng/devtools/view/aftersales/c;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/xiaopeng/devtools/view/aftersales/c;->ab(Z)V

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->d(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 74
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->d(Lcom/xiaopeng/devtools/presenter/aftersales/e;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_5

    const-string p1, "success"

    goto :goto_1

    .line 75
    :cond_5
    const-string p1, "fail"

    .line 74
    :goto_1
    invoke-static {p2, p1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/e$1;->vB:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->a(Lcom/xiaopeng/devtools/presenter/aftersales/e;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :cond_6
    return-void
.end method
