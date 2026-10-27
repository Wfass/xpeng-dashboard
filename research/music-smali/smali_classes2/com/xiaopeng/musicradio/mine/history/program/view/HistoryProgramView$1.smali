.class Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView$1;
.super Ljava/lang/Object;
.source "HistoryProgramView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/datalist/d$b<",
        "Landroidx/databinding/ViewDataBinding;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView$1;->a:Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V
    .locals 1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "HistoryProgramView"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "history"

    .line 99
    invoke-static {p1, p3, p2}, Laxw;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 95
    check-cast p3, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView$1;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    return-void
.end method
