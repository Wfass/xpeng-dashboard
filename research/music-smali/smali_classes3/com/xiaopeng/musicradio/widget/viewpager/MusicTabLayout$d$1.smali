.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;IIII)V
    .locals 0

    .line 2029
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->e:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->b:I

    iput p4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->c:I

    iput p5, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 2032
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2033
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->e:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->b:I

    .line 2034
    invoke-static {v1, v2, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/a;->a(IIF)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->c:I

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$1;->d:I

    .line 2035
    invoke-static {v2, v3, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/a;->a(IIF)I

    move-result p1

    .line 2033
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a(II)V

    return-void
.end method
