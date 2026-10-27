.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MusicTabLayout.java"


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

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;I)V
    .locals 0

    .line 2038
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$2;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2041
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$2;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d$2;->a:I

    iput v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a:I

    const/4 v0, 0x0

    .line 2042
    iput v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b:F

    return-void
.end method
