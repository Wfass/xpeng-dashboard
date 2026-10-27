.class Lcom/xiaopeng/devtools/presenter/aftersales/d$1;
.super Ljava/lang/Object;
.source "DidInfoPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/d;->ie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vw:Lcom/xiaopeng/devtools/presenter/aftersales/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/d;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/d$1;->vw:Lcom/xiaopeng/devtools/presenter/aftersales/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {}, Lcom/xiaopeng/devtools/presenter/aftersales/d;->if()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 30
    invoke-static {v4, v0}, Lcom/xiaopeng/devtools/model/b/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/d$1;->vw:Lcom/xiaopeng/devtools/presenter/aftersales/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/d;->a(Lcom/xiaopeng/devtools/presenter/aftersales/d;)Lcom/xiaopeng/devtools/view/aftersales/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/d$1;->vw:Lcom/xiaopeng/devtools/presenter/aftersales/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/d;->a(Lcom/xiaopeng/devtools/presenter/aftersales/d;)Lcom/xiaopeng/devtools/view/aftersales/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/aftersales/a;->c(Ljava/util/ArrayList;)V

    .line 35
    :cond_1
    return-void
.end method
