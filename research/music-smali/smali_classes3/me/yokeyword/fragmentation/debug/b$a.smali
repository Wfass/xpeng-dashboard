.class Lme/yokeyword/fragmentation/debug/b$a;
.super Ljava/lang/Object;
.source "DebugStackDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/fragmentation/debug/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/yokeyword/fragmentation/debug/b;

.field private b:Landroid/view/View;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:I


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/debug/b;Landroid/view/View;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->a:Lme/yokeyword/fragmentation/debug/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->d:F

    .line 231
    iput p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->f:F

    .line 236
    iput-object p2, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    .line 237
    iput p3, p0, Lme/yokeyword/fragmentation/debug/b$a;->h:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_2

    return v4

    .line 253
    :cond_0
    iget v1, p0, Lme/yokeyword/fragmentation/debug/b$a;->e:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lme/yokeyword/fragmentation/debug/b$a;->h:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iget p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->f:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lme/yokeyword/fragmentation/debug/b$a;->h:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-boolean p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->g:Z

    if-eqz p1, :cond_1

    .line 254
    iput-boolean v2, p0, Lme/yokeyword/fragmentation/debug/b$a;->g:Z

    goto :goto_0

    .line 256
    :cond_1
    iput-boolean v4, p0, Lme/yokeyword/fragmentation/debug/b$a;->g:Z

    .line 257
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lme/yokeyword/fragmentation/debug/b$a;->c:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 258
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lme/yokeyword/fragmentation/debug/b$a;->d:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 263
    :cond_2
    iget p2, p0, Lme/yokeyword/fragmentation/debug/b$a;->e:F

    sub-float/2addr p1, p2

    iget p2, p0, Lme/yokeyword/fragmentation/debug/b$a;->h:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->g:Z

    if-eqz p1, :cond_4

    .line 264
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 246
    :cond_3
    iput-boolean v2, p0, Lme/yokeyword/fragmentation/debug/b$a;->g:Z

    .line 247
    iput p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->e:F

    .line 248
    iput v0, p0, Lme/yokeyword/fragmentation/debug/b$a;->f:F

    .line 249
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->c:F

    .line 250
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lme/yokeyword/fragmentation/debug/b$a;->d:F

    :cond_4
    :goto_0
    return v2
.end method
