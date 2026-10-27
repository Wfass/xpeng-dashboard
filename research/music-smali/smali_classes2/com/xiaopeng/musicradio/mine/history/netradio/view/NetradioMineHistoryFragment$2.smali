.class Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;
.super Ljava/lang/Object;
.source "NetradioMineHistoryFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->setListener()V
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
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;->a:Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;I)V
    .locals 1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;->a:Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->access$000(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "NetradioMineHistoryFragment"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->btn_delete:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;->a:Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->access$100(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p3}, Laxv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;->a:Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->access$200(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 75
    check-cast p3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;I)V

    return-void
.end method
