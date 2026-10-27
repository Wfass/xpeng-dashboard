.class Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;
.super Ljava/lang/Object;
.source "BaseRecycleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;II)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;II)V

    return-void
.end method
