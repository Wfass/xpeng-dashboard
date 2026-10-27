.class Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;
.super Ljava/lang/Object;
.source "MusicViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    return-void
.end method
