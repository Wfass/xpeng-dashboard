.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MusicConLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 247
    instance-of v0, p1, Lbge;

    if-eqz v0, :cond_1

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 249
    :cond_1
    instance-of v0, p1, Lbfx;

    if-eqz v0, :cond_2

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 251
    :cond_2
    instance-of v0, p1, Lbfu;

    if-eqz v0, :cond_3

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 253
    :cond_3
    instance-of p1, p1, Lbgh;

    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 256
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    return p1

    .line 244
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    return p1
.end method
