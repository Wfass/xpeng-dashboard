.class public Lcom/xiaopeng/devtools/view/factorytest/audio/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AudioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static mPath:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mCurrentPosition:I

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mContext:Landroid/content/Context;

    .line 34
    sput-object p2, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->notifyDataSetChanged()V

    .line 52
    iget p2, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mCurrentPosition:I

    if-ne p2, p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->stopPlay()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->stopPlay()V

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->di(Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mCurrentPosition:I

    .line 59
    :goto_0
    return-void
.end method

.method private static synthetic b(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 91
    const-string v0, "AudioAdapter"

    const-string v1, " mMediaPlayer onPrepared"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 93
    return-void
.end method

.method public static synthetic lambda$LiZSJaJiUww1aQiA2n0Yf-y4VIE(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$R9kr1ao5X5Ocx89ZLi313NNdR_I(Lcom/xiaopeng/devtools/view/factorytest/audio/a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0099

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;I)V
    .locals 2

    .line 45
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mCurrentPosition:I

    if-ne v0, p2, :cond_0

    .line 48
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->b(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/audio/-$$Lambda$a$R9kr1ao5X5Ocx89ZLi313NNdR_I;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/audio/-$$Lambda$a$R9kr1ao5X5Ocx89ZLi313NNdR_I;-><init>(Lcom/xiaopeng/devtools/view/factorytest/audio/a;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public di(Ljava/lang/String;)V
    .locals 3

    .line 85
    const-string v0, "AudioAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "AudioAdapter"

    const-string v1, "testTrack mMediaPlayer == null "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/audio/-$$Lambda$a$LiZSJaJiUww1aQiA2n0Yf-y4VIE;->INSTANCE:Lcom/xiaopeng/devtools/view/factorytest/audio/-$$Lambda$a$LiZSJaJiUww1aQiA2n0Yf-y4VIE;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "AudioAdapter"

    const-string v1, "testTrack mMediaPlayer != null "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 101
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;

    move-result-object p1

    return-object p1
.end method

.method public stopPlay()V
    .locals 2

    .line 116
    const-string v0, "AudioAdapter"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :cond_0
    :goto_0
    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
