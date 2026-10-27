.class Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;
.super Ljava/lang/Object;
.source "NrBaseLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->updatePlayState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {v1}, Lbkd;->j()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 113
    new-instance v3, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;

    invoke-direct {v3, p0, v2}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;I)V

    invoke-static {v3}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
