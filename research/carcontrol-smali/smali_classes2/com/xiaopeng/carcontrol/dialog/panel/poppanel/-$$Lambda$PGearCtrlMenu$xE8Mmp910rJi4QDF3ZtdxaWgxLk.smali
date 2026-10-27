.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$xE8Mmp910rJi4QDF3ZtdxaWgxLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$xE8Mmp910rJi4QDF3ZtdxaWgxLk;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$xE8Mmp910rJi4QDF3ZtdxaWgxLk;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->lambda$new$11$PGearCtrlMenu(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V

    return-void
.end method
