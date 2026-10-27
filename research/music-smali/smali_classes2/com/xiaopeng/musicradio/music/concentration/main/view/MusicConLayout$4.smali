.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;
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

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 271
    instance-of v0, p1, Lbge;

    if-eqz v0, :cond_1

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    div-int/2addr p1, v0

    return p1

    .line 273
    :cond_1
    instance-of v0, p1, Lbfx;

    if-eqz v0, :cond_2

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    div-int/2addr p1, v0

    return p1

    .line 275
    :cond_2
    instance-of v0, p1, Lbfu;

    if-eqz v0, :cond_3

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    div-int/2addr p1, v0

    return p1

    .line 277
    :cond_3
    instance-of p1, p1, Lbgh;

    if-eqz p1, :cond_4

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    div-int/2addr p1, v0

    return p1

    .line 280
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    return p1

    .line 268
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    return p1
.end method
