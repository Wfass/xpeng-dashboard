.class Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;
.super Ljava/lang/Object;
.source "FixedFaultListFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "position"
        }
    .end annotation

    .line 63
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pageID"

    const/4 v1, 0x4

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getOccurrenceTime()J

    move-result-wide v0

    const-string v2, "occurrenceTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getAdvice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advice"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localFilePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getImageUrls()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "imageUrl"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
