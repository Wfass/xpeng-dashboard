.class public Lcom/google/android/material/internal/l;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/l$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Lajy;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lajw;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/l$a;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lcom/google/android/material/internal/l$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/l$1;-><init>(Lcom/google/android/material/internal/l;)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->b:Lajy;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/internal/l;->d:Z

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->e:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/l;->a(Lcom/google/android/material/internal/l$a;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)F
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/internal/l;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/internal/l;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/internal/l;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/internal/l;->d:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/material/internal/l;->d:Z

    if-nez v0, :cond_0

    .line 101
    iget p1, p0, Lcom/google/android/material/internal/l;->c:F

    return p1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/l;->a(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/l;->c:F

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/internal/l;->d:Z

    .line 106
    iget p1, p0, Lcom/google/android/material/internal/l;->c:F

    return p1
.end method

.method public a()Landroid/text/TextPaint;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public a(Lajw;Landroid/content/Context;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/google/android/material/internal/l;->f:Lajw;

    if-eq v0, p1, :cond_2

    .line 135
    iput-object p1, p0, Lcom/google/android/material/internal/l;->f:Lajw;

    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/l;->b:Lajy;

    invoke-virtual {p1, p2, v0, v1}, Lajw;->c(Landroid/content/Context;Landroid/text/TextPaint;Lajy;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/l$a;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/l$a;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/l;->b:Lajy;

    invoke-virtual {p1, p2, v0, v1}, Lajw;->b(Landroid/content/Context;Landroid/text/TextPaint;Lajy;)V

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/google/android/material/internal/l;->d:Z

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/l$a;

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Lcom/google/android/material/internal/l$a;->f()V

    .line 150
    invoke-interface {p1}, Lcom/google/android/material/internal/l$a;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/l$a;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/l;->f:Lajw;

    iget-object v1, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/l;->b:Lajy;

    invoke-virtual {v0, p1, v1, v2}, Lajw;->b(Landroid/content/Context;Landroid/text/TextPaint;Lajy;)V

    return-void
.end method

.method public a(Lcom/google/android/material/internal/l$a;)V
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/google/android/material/internal/l;->d:Z

    return-void
.end method

.method public b()Lajw;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/material/internal/l;->f:Lajw;

    return-object v0
.end method
