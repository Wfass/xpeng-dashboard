.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;Lcom/xiaopeng/musicradio/commonui/widget/c;Lcom/xiaopeng/musicradio/commonui/widget/c;)V
    .locals 0

    .line 2227
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    if-ne p2, p1, :cond_0

    .line 2228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->b:Z

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;Z)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 2233
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->b:Z

    return-void
.end method
