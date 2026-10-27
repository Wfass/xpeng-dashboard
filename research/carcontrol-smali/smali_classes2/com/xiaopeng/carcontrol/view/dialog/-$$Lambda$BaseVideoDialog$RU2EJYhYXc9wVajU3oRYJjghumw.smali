.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$RU2EJYhYXc9wVajU3oRYJjghumw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$RU2EJYhYXc9wVajU3oRYJjghumw;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$RU2EJYhYXc9wVajU3oRYJjghumw;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->lambda$initMedia$2$BaseVideoDialog(Landroid/media/MediaPlayer;)V

    return-void
.end method
