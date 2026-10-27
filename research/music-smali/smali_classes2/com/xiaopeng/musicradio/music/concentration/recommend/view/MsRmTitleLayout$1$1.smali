.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;
.super Ljava/lang/Object;
.source "MsRmTitleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->updateVuiScene()V

    return-void
.end method
