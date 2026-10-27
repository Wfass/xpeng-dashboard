.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    new-instance p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->access$100(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-boolean v1, v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-boolean v0, p1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->access$200(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    return-void
.end method
