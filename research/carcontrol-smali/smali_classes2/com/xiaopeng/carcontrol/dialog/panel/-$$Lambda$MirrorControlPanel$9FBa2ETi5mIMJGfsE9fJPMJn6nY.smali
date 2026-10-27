.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$9FBa2ETi5mIMJGfsE9fJPMJn6nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$9FBa2ETi5mIMJGfsE9fJPMJn6nY;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$9FBa2ETi5mIMJGfsE9fJPMJn6nY;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->lambda$onRegisterLiveData$17$MirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    return-void
.end method
