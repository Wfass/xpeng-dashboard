.class Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;
.super Ljava/lang/Object;
.source "DebugHierarchyViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;->setView(Ljava/util/List;ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;Landroid/widget/TextView;ILjava/util/List;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->d:Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;

    iput-object p2, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->a:Landroid/widget/TextView;

    iput p3, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->b:I

    iput-object p4, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 128
    sget v0, Lme/yokeyword/fragmentation/e$c;->isexpand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 129
    sget v0, Lme/yokeyword/fragmentation/e$c;->isexpand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v2, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->a:Landroid/widget/TextView;

    sget v3, Lme/yokeyword/fragmentation/e$b;->fragmentation_ic_right:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 132
    iget-object v2, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->d:Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;

    iget v3, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->b:I

    invoke-static {v2, v3}, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;->access$100(Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;I)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v2, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->d:Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;

    iget-object v3, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->c:Ljava/util/List;

    iget v4, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->b:I

    iget-object v5, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->a:Landroid/widget/TextView;

    invoke-static {v2, v3, v4, v5}, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;->access$200(Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;Ljava/util/List;ILandroid/widget/TextView;)V

    .line 137
    :goto_0
    sget v2, Lme/yokeyword/fragmentation/e$c;->isexpand:I

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->a:Landroid/widget/TextView;

    sget v0, Lme/yokeyword/fragmentation/e$c;->isexpand:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->d:Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;

    iget-object v0, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->c:Ljava/util/List;

    iget v1, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->b:I

    iget-object v2, p0, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer$2;->a:Landroid/widget/TextView;

    invoke-static {p1, v0, v1, v2}, Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;->access$200(Lme/yokeyword/fragmentation/debug/DebugHierarchyViewContainer;Ljava/util/List;ILandroid/widget/TextView;)V

    :goto_1
    return-void
.end method
