.class Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;
.super Landroid/database/DataSetObserver;
.source "MusicViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 0

    .line 3119
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b()V

    return-void
.end method
