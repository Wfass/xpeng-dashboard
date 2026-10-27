.class Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;
.super Ljava/lang/Object;
.source "CollectProgramActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V
    .locals 1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->access$000(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CollectProgramActivity"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->btn_delete:I

    if-eq p2, p4, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->access$100(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "collect"

    .line 88
    invoke-static {p1, p3, p2}, Laxw;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->access$200(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 81
    check-cast p3, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    return-void
.end method
