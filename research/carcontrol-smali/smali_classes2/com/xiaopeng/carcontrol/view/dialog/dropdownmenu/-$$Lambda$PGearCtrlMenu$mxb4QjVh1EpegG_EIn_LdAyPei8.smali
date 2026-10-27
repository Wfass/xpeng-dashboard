.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$mxb4QjVh1EpegG_EIn_LdAyPei8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$mxb4QjVh1EpegG_EIn_LdAyPei8;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$mxb4QjVh1EpegG_EIn_LdAyPei8;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->lambda$onRegisterLiveData$8$PGearCtrlMenu(Ljava/lang/Boolean;)V

    return-void
.end method
