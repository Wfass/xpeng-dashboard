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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 107
    if-nez p2, :cond_2

    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 111
    .local v1, "first":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 112
    .local v2, "last":I
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v3

    if-lt v3, v1, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v3

    if-gt v3, v2, :cond_1

    .line 113
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, "itemView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 115
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$100(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$200(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, "actionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 117
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$300(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$400(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$302(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$402(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 128
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->performClick(Landroid/view/View;)Z

    .line 134
    .end local v1    # "first":I
    .end local v2    # "last":I
    .end local v3    # "itemView":Landroid/view/View;
    .end local v4    # "actionView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;->this$0:Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->access$500(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 136
    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_2
    return-void
.end method
