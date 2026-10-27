.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

.field final synthetic c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

.field final synthetic d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;ILcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->a:I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    iput-object p4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 187
    sget p1, Lcom/xiaopeng/musicradio/program/b$f;->item_reading_history:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->b(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->c(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->a:I

    if-le p1, v1, :cond_5

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->k:Lcom/xiaopeng/xui/widget/XCheckBox;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->k:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XCheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XCheckBox;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->k:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XCheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$500(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->d(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$700(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->e(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    .line 196
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Z)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1200(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1100(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReadingHistoryDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    if-eqz v1, :cond_4

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: ======== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " info = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string v1, "near"

    .line 207
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 211
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v3, "/program/fragment/sub/detail"

    const-string v5, "LATELY"

    const-string v6, ""

    .line 210
    invoke-static/range {v2 .. v7}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1200(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setEditMode(Z)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->d:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Z)V

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$1;->c:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->c(Ljava/lang/String;)V

    .line 218
    :cond_4
    invoke-static {}, Lbrw;->d()V

    :cond_5
    :goto_2
    return-void
.end method
