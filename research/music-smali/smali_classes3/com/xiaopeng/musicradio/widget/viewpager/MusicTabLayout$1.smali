.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$1;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$1;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$1;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->scrollTo(II)V

    return-void
.end method
