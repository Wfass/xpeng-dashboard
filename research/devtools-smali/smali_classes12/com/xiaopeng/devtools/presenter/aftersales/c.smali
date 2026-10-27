.class public Lcom/xiaopeng/devtools/presenter/aftersales/c;
.super Ljava/lang/Object;
.source "DiagnosisCodePresenter.java"


# instance fields
.field private vr:Lcom/xiaopeng/devtools/view/aftersales/cdu/a;

.field private vs:Lcom/xiaopeng/commonfunc/b/b/a;

.field private vt:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/a;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    .line 20
    if-lez p2, :cond_0

    .line 21
    iput p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vr:Lcom/xiaopeng/devtools/view/aftersales/cdu/a;

    .line 24
    new-instance p1, Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f030002

    invoke-direct {p1, p2, v0}, Lcom/xiaopeng/commonfunc/b/b/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/b/a;->dF()V

    .line 26
    return-void
.end method


# virtual methods
.method public ch(I)V
    .locals 2

    .line 48
    iput p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/b/a;->dG()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vr:Lcom/xiaopeng/devtools/view/aftersales/cdu/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->dG()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/a;->a(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V

    .line 52
    :cond_0
    return-void
.end method

.method public dH()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->dH()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dI()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->dI()V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->dJ()V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vr:Lcom/xiaopeng/devtools/view/aftersales/cdu/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/b/b/a;->dG()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/a;->v(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vr:Lcom/xiaopeng/devtools/view/aftersales/cdu/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/b/b/a;->dG()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/a;->a(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V

    .line 33
    return-void
.end method

.method public ic()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vt:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/b/b/a;->bG(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/c;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->onDestroy()V

    .line 56
    return-void
.end method
