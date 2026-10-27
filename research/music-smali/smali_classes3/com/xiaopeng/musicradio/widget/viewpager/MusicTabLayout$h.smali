.class public Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 0

    .line 2183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2184
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 0

    return-void
.end method
