.class Lcom/zhpan/bannerview/provider/ScrollDurationManger$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScrollDurationManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhpan/bannerview/provider/ScrollDurationManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhpan/bannerview/provider/ScrollDurationManger;


# direct methods
.method constructor <init>(Lcom/zhpan/bannerview/provider/ScrollDurationManger;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger$1;->this$0:Lcom/zhpan/bannerview/provider/ScrollDurationManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger$1;->this$0:Lcom/zhpan/bannerview/provider/ScrollDurationManger;

    invoke-static {p1}, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->access$000(Lcom/zhpan/bannerview/provider/ScrollDurationManger;)I

    move-result p1

    return p1
.end method
