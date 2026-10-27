.class public Lcom/xiaopeng/carcontrol/direct/action/PsnSeatAdjustPageAction;
.super Ljava/lang/Object;
.source "PsnSeatAdjustPageAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/action/PageAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .line 16
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "pageID"

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
