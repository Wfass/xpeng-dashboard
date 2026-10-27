.class Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ProgramChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$002(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)I

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, p1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mFirstVisibleItemPosition:I

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$102(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " lastVisibleItemPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$100(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProgramChoiceFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
