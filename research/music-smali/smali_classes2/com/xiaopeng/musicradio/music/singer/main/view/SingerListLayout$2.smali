.class Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;
.super Ljava/lang/Object;
.source "SingerListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mAreaCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
