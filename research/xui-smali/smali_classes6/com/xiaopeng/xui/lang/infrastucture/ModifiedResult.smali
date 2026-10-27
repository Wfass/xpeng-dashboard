.class public Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;
.super Ljava/lang/Object;
.source "ModifiedResult.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


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

    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;>;"
    if-eqz p1, :cond_2

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
    .local v1, "item":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mModifiedItem:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v1    # "item":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    goto :goto_0

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mLastModify:Ljava/util/List;

    .line 36
    return-void

    .line 30
    :cond_2
    :goto_1
    return-void
.end method

.method public getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "eoLangId"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mModifiedItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    .line 40
    .local v0, "item":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    if-nez v0, :cond_0

    .line 41
    return-object p2

    .line 43
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->targetLang:Ljava/lang/String;

    return-object v1
.end method

.method public isRecentlyModify(Ljava/lang/String;)Z
    .locals 3
    .param p1, "eoLang"    # Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mLastModify:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->mLastModify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    .line 20
    .local v1, "item":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    iget-object v2, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const/4 v0, 0x1

    return v0

    .line 23
    .end local v1    # "item":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    :cond_0
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
