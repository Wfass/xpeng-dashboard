.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;
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

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 223
    instance-of v0, p1, Lbge;

    if-eqz v0, :cond_1

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 225
    :cond_1
    instance-of v0, p1, Lbfx;

    if-eqz v0, :cond_2

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 227
    :cond_2
    instance-of v0, p1, Lbfu;

    if-eqz v0, :cond_3

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 229
    :cond_3
    instance-of p1, p1, Lbgh;

    if-eqz p1, :cond_4

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    div-int/2addr p1, v0

    return p1

    .line 232
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    return p1

    .line 220
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    return p1
.end method
