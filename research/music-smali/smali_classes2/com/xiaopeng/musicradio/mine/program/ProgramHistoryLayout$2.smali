.class Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;
.super Ljava/lang/Object;
.source "ProgramHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V
    .locals 1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->access$000(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ProgramHistoryLayout"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->btn_delete:I

    if-eq p2, p4, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->access$100(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Latu;->b(Ljava/lang/String;)V

    const-string p2, "history"

    .line 136
    invoke-static {p1, p3, p2}, Laxw;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->access$200(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 128
    check-cast p3, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    return-void
.end method
