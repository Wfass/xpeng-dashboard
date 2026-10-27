.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$1:Z

    iput p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$1:Z

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->lambda$show$8$AbstractPanel(ZI)V

    return-void
.end method
