.class Lcom/xiaopeng/xui/app/a/c;
.super Lcom/xiaopeng/xui/app/a/b;
.source "XActivityDelegateImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/e$d;
.implements Lcom/xiaopeng/xui/app/a/g$a;


# instance fields
.field private ZW:I

.field private aat:Landroidx/appcompat/app/AppCompatActivity;

.field private aau:Lcom/xiaopeng/xui/app/a/j;

.field private aav:Lcom/xiaopeng/xui/app/a/k;

.field private aaw:Lcom/xiaopeng/xui/app/a/i;

.field private aax:Lcom/xiaopeng/xui/app/a/g;

.field private aay:Lcom/xiaopeng/xui/app/a/f;

.field private aaz:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xui/app/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/b;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/c;->init()V

    .line 42
    return-void
.end method

.method private f(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/xiaopeng/xui/app/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-class v0, Lcom/xiaopeng/xui/app/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/a/a;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/a/a;->value()I

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 88
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/c;->f(Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 91
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/xiaopeng/xui/app/a/l;->qH()Lcom/xiaopeng/xui/app/a/l;

    move-result-object v0

    .line 46
    const-string v1, "XActivityDelegate-init"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/a/l;->start(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/a/c;->f(Ljava/lang/Class;)I

    move-result v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysisAnnotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/xiaopeng/xui/app/a/j;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/a/j;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aau:Lcom/xiaopeng/xui/app/a/j;

    .line 52
    const-string v2, "attributes"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/xiaopeng/xui/app/a/k;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/xiaopeng/xui/app/a/k;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aav:Lcom/xiaopeng/xui/app/a/k;

    .line 55
    const-string v2, "visible"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, p0}, Lcom/xiaopeng/xui/app/a/f;->e(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/f;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    .line 58
    const-string v2, "cause"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/a/g;->b(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/a/g;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/a/g;->a(Lcom/xiaopeng/xui/app/a/g$a;)V

    .line 62
    const-string v2, "dismiss"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/app/a/i;->b(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    .line 65
    const-string v1, "template"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/a/i;->a(Lcom/xiaopeng/xui/app/a/g;)V

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/a/i;->a(Lcom/xiaopeng/xui/app/a/f;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aau:Lcom/xiaopeng/xui/app/a/j;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/a/i;->a(Lcom/xiaopeng/xui/app/a/j;)V

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aav:Lcom/xiaopeng/xui/app/a/k;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/a/i;->a(Lcom/xiaopeng/xui/app/a/k;)V

    .line 70
    const-string v1, "template-init"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/a/l;->fk(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aav:Lcom/xiaopeng/xui/app/a/k;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/l;->end()V

    .line 78
    return-void
.end method

.method public static synthetic lambda$5s8zW6H4gW-5zj_Wsebg4Ivxy6g(Lcom/xiaopeng/xui/app/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/c;->qz()V

    return-void
.end method

.method private synthetic qz()V
    .locals 3

    .line 124
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aaw:Lcom/xiaopeng/xui/app/a/i;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aav:Lcom/xiaopeng/xui/app/a/k;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "XActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qB()V

    .line 225
    const/4 p1, 0x0

    return p1
.end method

.method public eg(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aax:Lcom/xiaopeng/xui/app/a/g;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/g;->dismiss(I)V

    .line 241
    return-void
.end method

.method public eh(I)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aav:Lcom/xiaopeng/xui/app/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/a/k;->be(Z)V

    .line 246
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qG()Lcom/xiaopeng/xui/app/a/e$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qG()Lcom/xiaopeng/xui/app/a/e$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/xui/app/a/e$e;->qA()V

    .line 251
    :cond_0
    return-void
.end method

.method public ei(I)V
    .locals 0

    .line 256
    return-void
.end method

.method public installViewFactory()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/a/c$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/a/c$1;-><init>(Lcom/xiaopeng/xui/app/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 202
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/f;->onBackPressed()V

    .line 236
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 182
    iget v0, p0, Lcom/xiaopeng/xui/app/a/c;->ZW:I

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/a/c;->ZW:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/c/a;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 134
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/a/h;->onCreate(Landroid/os/Bundle;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 176
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onDestroy()V

    .line 177
    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 162
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onPause()V

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aau:Lcom/xiaopeng/xui/app/a/j;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/j;->apply()V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->aat:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010054

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/a/c;->ZW:I

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/c;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/xui/app/a/-$$Lambda$c$5s8zW6H4gW-5zj_Wsebg4Ivxy6g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/a/-$$Lambda$c$5s8zW6H4gW-5zj_Wsebg4Ivxy6g;-><init>(Lcom/xiaopeng/xui/app/a/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 148
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onResume()V

    .line 149
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 141
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onStart()V

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 169
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onStop()V

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aay:Lcom/xiaopeng/xui/app/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/f;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public qy()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/c;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 155
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->qy()V

    .line 156
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
