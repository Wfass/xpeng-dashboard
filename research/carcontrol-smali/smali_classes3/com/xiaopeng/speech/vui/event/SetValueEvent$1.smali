.class Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SetValueEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/event/SetValueEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_2

    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v2

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$100(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$200(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$300(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$400(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$302(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$402(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->performClick(Landroid/view/View;)Z

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$500(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    return-void
.end method
