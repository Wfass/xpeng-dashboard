.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$X4Xhpt_mFO_WvTYswsSeb7MHDU8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$X4Xhpt_mFO_WvTYswsSeb7MHDU8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;

    return-void
.end method


# virtual methods
.method public final onItemChecked(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$X4Xhpt_mFO_WvTYswsSeb7MHDU8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->setCustomKey(I)V

    return-void
.end method
