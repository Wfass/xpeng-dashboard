.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$ATAR3qwGMBhLbjV9lxWea96cClA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$ATAR3qwGMBhLbjV9lxWea96cClA;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$ATAR3qwGMBhLbjV9lxWea96cClA;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->dismiss()V

    return-void
.end method
