.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 274
    new-instance p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v1, v2}, Lazz;->a(I)Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lazy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$102(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setDissExtraId(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$300(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$200(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$200(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$400(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$200(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$202(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;Z)Z

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$500(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    return-void
.end method
