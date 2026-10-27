.class Landroidx/recyclerview/widget/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

.field final synthetic val$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    .line 276
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->val$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 279
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-static {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->access$100(Landroidx/recyclerview/widget/AsyncListDiffer;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->val$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;->access$200(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 282
    :cond_0
    return-void
.end method
