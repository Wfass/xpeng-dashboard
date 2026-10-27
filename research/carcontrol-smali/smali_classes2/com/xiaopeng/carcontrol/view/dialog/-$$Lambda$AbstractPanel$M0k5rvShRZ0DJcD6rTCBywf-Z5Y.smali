.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$M0k5rvShRZ0DJcD6rTCBywf-Z5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$M0k5rvShRZ0DJcD6rTCBywf-Z5Y;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$M0k5rvShRZ0DJcD6rTCBywf-Z5Y;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->lambda$initPanelListener$5$AbstractPanel(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
