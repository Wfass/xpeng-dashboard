.class Lu$1;
.super Lgp;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lu;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lu$1;->a:Lu;

    invoke-direct {p0}, Lgp;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lu$1;->b:Z

    .line 123
    iput p1, p0, Lu$1;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lu$1;->c:I

    .line 138
    iput-boolean v0, p0, Lu$1;->b:Z

    .line 139
    iget-object v0, p0, Lu$1;->a:Lu;

    invoke-virtual {v0}, Lu;->b()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-boolean p1, p0, Lu$1;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lu$1;->b:Z

    .line 131
    iget-object p1, p0, Lu$1;->a:Lu;

    iget-object p1, p1, Lu;->b:Lgo;

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lu$1;->a:Lu;

    iget-object p1, p1, Lu;->b:Lgo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgo;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 144
    iget p1, p0, Lu$1;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu$1;->c:I

    iget-object v0, p0, Lu$1;->a:Lu;

    iget-object v0, v0, Lu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lu$1;->a:Lu;

    iget-object p1, p1, Lu;->b:Lgo;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lu$1;->a:Lu;

    iget-object p1, p1, Lu;->b:Lgo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgo;->b(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lu$1;->a()V

    :cond_1
    return-void
.end method
