.class Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$1;
.super Ljava/lang/Object;
.source "ListRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$1;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;->o()V

    return-void
.end method
