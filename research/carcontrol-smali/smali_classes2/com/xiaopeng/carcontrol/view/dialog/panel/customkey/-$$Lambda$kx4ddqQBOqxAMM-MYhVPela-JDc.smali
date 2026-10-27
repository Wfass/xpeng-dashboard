.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$kx4ddqQBOqxAMM-MYhVPela-JDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$kx4ddqQBOqxAMM-MYhVPela-JDc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;

    return-void
.end method


# virtual methods
.method public final onItemChecked(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/-$$Lambda$kx4ddqQBOqxAMM-MYhVPela-JDc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->setCustomKey(I)V

    return-void
.end method
