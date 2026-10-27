.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;
.super Ljava/lang/Object;
.source "RdDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    const-string v2, "key_cache_albumbena"

    invoke-virtual {v1, v2, v0}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ab;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ab;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
