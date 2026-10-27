.class Lcom/xiaopeng/devtools/presenter/f/f$a;
.super Ljava/lang/Object;
.source "SmartDrivePresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/g/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private zs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;->a([I)V

    .line 62
    :cond_0
    return-void
.end method

.method public b([I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;->b([I)V

    .line 69
    :cond_0
    return-void
.end method

.method public c([I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;->c([I)V

    .line 76
    :cond_0
    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f$a;->zs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;->s(Ljava/util/List;)V

    .line 83
    :cond_0
    return-void
.end method
