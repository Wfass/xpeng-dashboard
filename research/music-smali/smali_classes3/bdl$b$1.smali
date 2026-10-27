.class Lbdl$b$1;
.super Lbkv;
.source "AbsReissueModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdl$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

.field final synthetic b:Lbdl$a;

.field final synthetic c:Lbdl$b;


# direct methods
.method constructor <init>(Lbdl$b;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lbdl$b$1;->c:Lbdl$b;

    iput-object p2, p0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    iput-object p3, p0, Lbdl$b$1;->b:Lbdl$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method

.method static synthetic a(Lbdl$b$1;Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lbdl$b$1;->a(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 2

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 127
    :cond_2
    invoke-static {}, Lare;->d()Lare;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lare;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 131
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-virtual {p2, p1}, Lare;->c(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReissueModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lbdl$b$1;->b:Lbdl$a;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-interface {v0, v1, p1, p2}, Lbdl$a;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;ILjava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lbdl$b$1;->c:Lbdl$b;

    iget-object v0, v0, Lbdl$b;->a:Lbdl;

    iget-object v1, p0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    iget-object v2, p0, Lbdl$b$1;->b:Lbdl$a;

    invoke-virtual {v0, v1, v2, p1, p2}, Lbdl;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;)V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReissueModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lbdl$b$1$1;

    invoke-direct {v0, p0, p1}, Lbdl$b$1$1;-><init>(Lbdl$b$1;Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 108
    iget-object v0, p0, Lbdl$b$1;->b:Lbdl$a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-interface {v0, v1, p1}, Lbdl$a;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    invoke-virtual {p0, p1}, Lbdl$b$1;->a(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;)V

    return-void
.end method
