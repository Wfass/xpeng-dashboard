.class Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView$2;
.super Ljava/lang/Object;
.source "HistoryProgramView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView$2;->a:Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-static {}, Latt;->b()V

    const-string p1, "/mine/activity/history/program"

    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Lbni;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
