.class Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;
.super Ljava/lang/Object;
.source "RepairModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;->onRepairModeChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UB:Z

.field final synthetic UC:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;Z)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;->UC:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;

    iput-boolean p2, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;->UB:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;->UC:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;->UA:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->a(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;->UB:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;->UC:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;->UA:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->b(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    return-void
.end method
