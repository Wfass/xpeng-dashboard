.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SeatMassagePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPos",
            "newPos"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPos",
            "newPos"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
