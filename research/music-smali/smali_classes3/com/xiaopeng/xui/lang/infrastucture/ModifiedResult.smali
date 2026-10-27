.class public Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;
.super Ljava/lang/Object;
.source "ModifiedResult.java"


# instance fields
.field private mLastModify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;",
            ">;"
        }
    .end annotation
.end field

.field private mModifiedItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mModifiedItem:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addModifiedString(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mModifiedItem:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mLastModify:Ljava/util/List;

    :cond_2
    :goto_1
    return-void
.end method

.method public getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mModifiedItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    if-nez p1, :cond_0

    return-object p2

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->targetLang:Ljava/lang/String;

    return-object p1
.end method

.method public isRecentlyModify(Ljava/lang/String;)Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mLastModify:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    .line 20
    iget-object v1, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
