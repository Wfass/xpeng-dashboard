.class public Lcom/xiaopeng/speech/vui/filter/ListClickEventFaultFilter;
.super Lcom/xiaopeng/speech/vui/filter/BaseFaultFilter;
.source "ListClickEventFaultFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/filter/BaseFaultFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 8
    .param p1, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 16
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    .line 18
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Click"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "id":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "id_position":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 22
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 24
    .local v5, "position":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-gt v6, v7, :cond_0

    .line 25
    const-string v6, "listItemClick"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResultActions(Ljava/util/List;)V

    .line 22
    .end local v5    # "position":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "id_position":[Ljava/lang/String;
    :cond_1
    return-object p1
.end method
