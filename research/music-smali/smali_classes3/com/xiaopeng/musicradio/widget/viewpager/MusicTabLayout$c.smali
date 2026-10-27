.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;
.super Landroid/database/DataSetObserver;
.source "MusicTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V
    .locals 0

    .line 2204
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->populateFromPagerAdapter()V

    return-void
.end method
