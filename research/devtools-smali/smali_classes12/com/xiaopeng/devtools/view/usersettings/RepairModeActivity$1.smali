.class Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;
.super Ljava/lang/Object;
.source "RepairModeActivity.java"

# interfaces
.implements Lcom/xiaopeng/aftersales/RepairModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UA:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;->UA:Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepairModeChanged(ZI)V
    .locals 0

    .line 30
    new-instance p2, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1$1;-><init>(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;Z)V

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
