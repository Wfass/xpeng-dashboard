.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;
.super Ljava/lang/Object;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lblz;

    move-result-object p1

    invoke-virtual {p1, p2}, Lblz;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1102(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)Z

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(I)V

    .line 259
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->h()V

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1, v2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V

    :cond_0
    return-void
.end method
