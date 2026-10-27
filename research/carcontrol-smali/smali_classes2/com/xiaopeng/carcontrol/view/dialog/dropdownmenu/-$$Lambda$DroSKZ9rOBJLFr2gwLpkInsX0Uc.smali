.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DroSKZ9rOBJLFr2gwLpkInsX0Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DroSKZ9rOBJLFr2gwLpkInsX0Uc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DroSKZ9rOBJLFr2gwLpkInsX0Uc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->dismiss()V

    return-void
.end method
